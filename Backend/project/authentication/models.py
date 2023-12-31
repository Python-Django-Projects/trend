from django.db import models

from django.contrib.auth.models import AbstractBaseUser,BaseUserManager

class CustomUserManager(BaseUserManager):
    pass

class User(AbstractBaseUser):
    pass