from django.http import HttpResponseRedirect, request
from django.shortcuts import render

# Create your views here.
from django.urls import reverse
from django.views.generic import TemplateView

from indplan.models import Department, Institute


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
        # return HttpResponseRedirect(reverse('index'))

        # return render(request, 'index.html')
        # return render(request, "index.html", context)

