from django.contrib import admin
from .models import *
admin.site.register(Institute)

admin.site.register(Department)
admin.site.register(EducationProgram)
admin.site.register(Category_Subject)
admin.site.register(Direction_Subject)
admin.site.register(GroupStudent)

admin.site.register(Teacher)
admin.site.register(Student)
#
admin.site.register(Subject)
admin.site.register(IndividualPlan)
admin.site.register(EducationProgramMainSubject)
admin.site.register(EducationProgramSelectiveSubject)
# Register your models here.
