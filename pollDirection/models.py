from django.conf import settings
from django.db import models

# Create your models here.
from indplan.models import Direction_Subject

answer = [
    ("True", "Так"),
    ("False", "Ні"),
]

class Question(models.Model):
    title = models.CharField(max_length=4096)
    number=models.PositiveIntegerField(default=1)

    def __str__(self):
           return self.title

class PollDirection(models.Model):
    namePoll=models.CharField(max_length=20)
    question = models.ForeignKey(Question, on_delete=models.DO_NOTHING, related_name="poll_question")
    choice = models.CharField(blank=True, max_length=100, choices=answer)
    choiceTrue = models.ForeignKey(Question, blank=True, on_delete=models.DO_NOTHING, related_name="poll_true")
    choiceFalse = models.ForeignKey(Question,blank=True, on_delete=models.DO_NOTHING, related_name="poll_false")
    isEnd = models.ForeignKey(Direction_Subject, blank=True, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.namePoll+' '+self.question

