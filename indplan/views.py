from django.shortcuts import render, get_object_or_404

# Create your views here.
from django.template import context
from django.views.generic import TemplateView, ListView

from indplan.models import Department, Institute, Student, Teacher, GroupStudent, EducationProgram,EducationProgramSelectiveSubject, EducationProgramMainSubject, IndividualPlan


class AllFacultyList(TemplateView):

    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        institutes = Institute.objects.all()
        departments = Department.objects.all()

        context["institutes"] = institutes[:6]
        context["departments"] = departments[:5]
        print(context)
        return context


# working with models of student
class all_students(ListView):
    model = Student
    context_object_name = 'students'
    template_name = 'student/index.html'



def student_detail(request, id):
    student = get_object_or_404(Student, id=id)
    print(student)
    return render(request, 'student/edit_indplan.html', {'student': student})


class all_teachers(ListView):
    model = Teacher
    context_object_name = 'teachers'
    template_name = 'teacher/index.html'

# ==================== індивідуальний (освітня траєкторія) план (вибір здобувачем компонент вільного вибору)=============
def ind_plan_student(request,id):
    if(request.user.id!=None):
        student = get_object_or_404(Student,user_student=request.user.id)
    else:
        student = get_object_or_404(Student, id=id)
    ip_student=IndividualPlan.objects.filter(student=student)
    print(student.group_st)
    group=GroupStudent.objects.get(name=student.group_st)
    print(group.education)
    education_prog=EducationProgram.objects.all();
    main_subjects=EducationProgramMainSubject.objects.filter(educationProg=group.education)
    selective_subjects=EducationProgramSelectiveSubject.objects.filter(educationProg=group.education)
    return render(request, 'student/indplan.html', {
        'student': student,
        'group':group,
        'education_prog':education_prog,
        'main_subjects':main_subjects,
        'selective_subjects':selective_subjects,
        'ip_student':ip_student,
    })
