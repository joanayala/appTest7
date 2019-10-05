from django.db import models
from django.utils import timezone

class Question(models.Model):
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')
    def __str__(self):
        return self.question_text

class Choice(models.Model): 
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    descr_ch = models.CharField(max_length=200)
    votes = models.IntegerField(default=0)

class User(models.Model):
    user_name = models.CharField(max_length=200)
    create_date = models.DateTimeField('date created')