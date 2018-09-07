# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User


class Language(models.Model):
    name = models.CharField(max_length=500)

    def __str__(self):
        return self.name


class Country(models.Model):
    name = models.CharField(max_length=500)
    language = models.ForeignKey(Language, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Year(models.Model):
    number = models.IntegerField()

    def __str__(self):
        return  str(self.number)


class Genre(models.Model):
    name = models.CharField(max_length=500)

    def __str__(self):
        return self.name


class Editorial(models.Model):
    name = models.CharField(max_length=500)

    def __str__(self):
        return self.name


class Autor(models.Model):
    name = models.CharField(max_length=500)

    def __str__(self):
        return self.name


class Book(models.Model):
    name = models.CharField(max_length=500)
    year = models.ForeignKey(Year, on_delete=models.CASCADE)
    cover = models.ImageField(upload_to='cover', blank=True)

    def __str__(self):
        return self.name


class EditorialBook(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    editorial = models.ForeignKey(Editorial, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class AutorBook(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    autor = models.ForeignKey(Autor, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class BookGenre(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    genre = models.ForeignKey(Genre, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class BookUser(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class Contact(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="user")
    contact = models.ForeignKey(User, on_delete=models.CASCADE, related_name="contact")


class Rule(models.Model):
    name = models.CharField(max_length=500)

    def __str__(self):
        return self.name


class Currency(models.Model):
    name = models.CharField(max_length=500)
    rule = models.ForeignKey(Rule, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class CurrencyExchange(models.Model):
    currency = models.ForeignKey(Currency, on_delete=models.CASCADE)
    buy = models.BigIntegerField()
    sell = models.BigIntegerField()

    def __str__(self):
        return self.currency


class OpenTrade(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    price = models.BigIntegerField()
    currency = models.ForeignKey(Currency, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class ProcessTrade(models.Model):
    userOne = models.ForeignKey(User, on_delete=models.CASCADE, related_name="userOneP")
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    userTwo = models.ForeignKey(User, on_delete=models.CASCADE, related_name="userTwoP")
    price = models.BigIntegerField()
    currency = models.ForeignKey(Currency, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class Score(models.Model):
    number = models.BigIntegerField()


class CloseTrade(models.Model):
    userOne = models.ForeignKey(User, on_delete=models.CASCADE, related_name="userOneC")
    userTwo = models.ForeignKey(User, on_delete=models.CASCADE, related_name="userTwoC")
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    score = models.ForeignKey(Score, on_delete=models.CASCADE)
    country = models.ForeignKey(Country, on_delete=models.CASCADE)
    date = models.DateField()
    notes = models.CharField(max_length=500)
    price = models.BigIntegerField()
    currency = models.ForeignKey(Currency, on_delete=models.CASCADE)

    def __str__(self):
        return self.book


class GroupGenre(models.Model):
    name = models.CharField(max_length=500)

    def __str__(self):
        return self.name


class Group(models.Model):
    name = models.CharField(max_length=500)
    genre = models.ForeignKey(GroupGenre, blank=True, null=True)
    member = models.ManyToManyField(User, blank=True)
    cover = models.ImageField(upload_to='cover', blank=True)

    def __str__(self):
        return self.name


class Sponsor(models.Model):
    name = models.CharField(max_length=500)
    opinion = models.CharField(max_length=500)
    country = models.ForeignKey(Country, on_delete=models.CASCADE, blank=True, null=True)
    logo = models.ImageField(upload_to='logo', blank=True)

    def __str__(self):
        return self.name


