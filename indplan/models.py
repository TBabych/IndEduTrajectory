from django.contrib.auth.models import User
from django.db import models
from django.utils import timezone
from django.conf import settings  # new
# Create your models here.
from django.urls import reverse
from django.utils.text import slugify

#інститут
class Institute(models.Model):
    fullname=models.CharField(max_length=60)
    shortname = models.CharField(max_length=10)
    slug=models.SlugField(max_length=50, unique='shortname')

    class Meta:
        ordering=('fullname','shortname',)

    def __str__(self):
        return self.shortname

# кафедра
class Department(models.Model):
    name=models.CharField(max_length=80)
    slug=models.SlugField(max_length=50, allow_unicode='name')
    institute=models.ForeignKey(Institute,blank=False, on_delete=models.CASCADE,related_name='institute_departments')

    class Meta:
        ordering=('name',)

    def __str__(self):
        return self.name

#напрям предмету і програми
class Direction_Subject(models.Model):
    name=models.CharField(max_length=30)

    class Meta:
        ordering = ["name"]

    def __str__(self):
        return self.name

#освітня програма
class EducationProgram(models.Model):
    name=models.CharField(max_length=100)
    slug=models.SlugField(max_length=100, allow_unicode='code')
    code = models.CharField(max_length=10)
    direction = models.ForeignKey(Direction_Subject, blank=False, on_delete=models.SET_NULL, null=True,
                                  related_name="direction_prog")
    date_create = models.DateField(default=timezone.now)

    def __str__(self):
        return self.code+' '+self.name

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        super().save(*args, **kwargs)

    class Meta:
        ordering=('name',)


#група
class GroupStudent(models.Model):
    name=models.CharField(max_length=20,unique=True)
    slug=models.SlugField(allow_unicode=True, unique=True)
    education=models.ForeignKey(EducationProgram,blank=False, on_delete=models.CASCADE,related_name='edprog_group')
    institute=models.ForeignKey(Institute,related_name="institute_groups",on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        super().save(*args, **kwargs)



# teacher tuple
teacher_rank = [
    ("Lecturer", "Lecturer"),
    ("Assistant professor", "Assistant professor"),
    ("Associate professor", "Associate professor"),
    ("Professor", "Professor"),
    ("Professor emeritus", "Professor emeritus"),
]

class Teacher(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, blank=False, related_name="teachers", on_delete=models.CASCADE)
    profile_pic = models.ImageField(upload_to='teachers/profile_pics', blank=True)
    teacher_ID = models.CharField(max_length=20, unique=True, blank=False)
    academic_rank =models.CharField(blank=False, max_length=100, choices=teacher_rank)
    teacher_slug = models.SlugField(allow_unicode=True, unique=True)

    def __str__(self):
        return self.user.username

    def save(self, *args, **kwargs):
        self.teacher_slug = slugify(self.user.username)
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse("teachers:teacher_detail",
                       kwargs={"department_slug": self.department.slug,
                               "teacher_slug": self.teacher_slug})

    class Meta:
        ordering = ["teacher_ID"]
        unique_together = ["teacher_ID", "department"]


class Student(models.Model):
    user_student = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    group_st = models.ForeignKey(GroupStudent, related_name="group_students", blank=False, on_delete=models.CASCADE)
    profile_pic = models.ImageField(upload_to='students/profile_pics', blank=True)
    student_ID = models.CharField(max_length=20, unique=True, blank=False)
    student_slug = models.SlugField(allow_unicode=True, unique=True)
    year_entered=models.DateField(default=timezone.now)

    def __str__(self):
        return str(self.user_student)

    def save(self, *args, **kwargs):
        self.student_slug = slugify(self.user_student.username)
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse("students:student_detail",
                       kwargs={'group_slug':self.group_st.slug,"student_slug":self.student_slug})

    class Meta:
        ordering = ["student_ID"]
        unique_together = ["user_student","group_st"]


#категорія
class Category_Subject(models.Model):
    name=models.CharField(max_length=30)

    class Meta:
        ordering = ["name"]

    def __str__(self):
        return self.name

class Subject(models.Model):
    name = models.CharField(max_length=50)
    slug=models.SlugField(allow_unicode=True, unique=True)
    credit=models.FloatField()
    direction=models.ForeignKey(Direction_Subject,blank=True, on_delete=models.SET_NULL,null=True,related_name="direction")
    category = models.ForeignKey(Category_Subject,blank=True, on_delete=models.SET_NULL, null=True, related_name="category")
    departmentId = models.ForeignKey(Department, blank=True, related_name="department_subjects", on_delete=models.SET_NULL,null=True)
    teacherId=models.ForeignKey(Teacher, blank=True, related_name="teacher_subjects", on_delete=models.SET_NULL, null=True)
    class Meta:
        ordering = ["name"]

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        super().save(*args, **kwargs)


#обов'язкові компоненти освітньої програми
class EducationProgramMainSubject(models.Model):
    code_subject=models.CharField(max_length=10, null=True)
    educationProg=models.ForeignKey(EducationProgram,blank=True, on_delete=models.SET_NULL,null=True)
    mainsubject=models.ForeignKey(Subject, blank=True, on_delete=models.SET_NULL,null=True)
    semestr = models.PositiveIntegerField(default=1)

    def __str__(self):
        return self.code_subject+' '+str(self.mainsubject)

#вибіркові компоненти освітньої програми
class EducationProgramSelectiveSubject(models.Model):
    code_subject=models.CharField(max_length=10, null=True)
    number_from_two = models.PositiveSmallIntegerField(default=1)
    educationProg=models.ForeignKey(EducationProgram,blank=True, on_delete=models.SET_NULL,null=True)
    selectivesubject=models.ForeignKey(Subject, blank=True, on_delete=models.SET_NULL,null=True)
    semestr = models.PositiveIntegerField(default=1)


    def __str__(self):
        return self.code_subject+'.'+str(self.number_from_two)+' '+str(self.selectivesubject)


class IndividualPlan(models.Model):
    code_subject = models.CharField(max_length=10, default="ВК07")
    student=models.ForeignKey(Student,on_delete=models.CASCADE)
    subject=models.ForeignKey(Subject,on_delete=models.CASCADE)
    semestr=models.PositiveIntegerField()

    class Meta:
        ordering = ["semestr"]

    def __str__(self):
        return str(self.student)+' '+str(self.subject)+' ('+str(self.semestr)+' семестр)'
