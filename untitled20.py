# -*- coding: utf-8 -*-
"""
Created on Tue Jan  7 17:25:10 2020

@author: User
"""

#--------07.01.2020-----------

class Animal():
    name= ''
    color= ''
    breed= ''
    age= ''
    
    def __init__ (self, n,c,b,a):
        self.name= n
        self.color= c
        self.breed= b
        self.age= a
        self.perks=[]
        
    def addPerks(self,perk_type):
        self.perks.append(perk_type)
         
    def showPerks(self):
        return self.perks
   
    
class Cat(Animal):
    def bark(self):
        print('Cat Meow')

class Dog(Animal):
    def bark(self):
        print('Dog Woof')

cat1=Cat('Кошка', 'Белый', 'Скотишь', '10')
cat1.addPerks('Ловит птиц')

dog1=Dog('Шарик', 'Рыжий', 'Боксёр', '12')
dog1.addPerks('Сторожит дом')

print(f'Имя: {cat1.name} \n'
      f'Цвет: {cat1.color} \n'
      f'Порода: {cat1.breed} \n'
      f'Возраст: {cat1.age} \n'
      f'{cat1.bark()} \n'
      f'Умения: {cat1.showPerks()}')
print(f'Имя: {dog1.name} \n'
      f'Цвет: {dog1.color} \n'
      f'Порода: {dog1.breed} \n'
      f'Возраст: {dog1.age} \n'
      f'{dog1.bark()} \n'
      f'Умения: {dog1.showPerks()}')

 