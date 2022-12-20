from django.urls import path
from . import views


app_name = 'indplan'

urlpatterns = [
    path('students/', views.all_students.as_view(), name='all_students'),
    path('students/edit/<int:id>', views.student_detail, name="ind_plan_student_edit"),
    path('students/<int:id>', views.ind_plan_student, name="ind_plan_student"),
    path('teachers/', views.all_teachers.as_view(), name='all_teachers'),



]
