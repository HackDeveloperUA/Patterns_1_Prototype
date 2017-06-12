# Patterns_1_Prototype


Prototype

Прототип - позволяет получить точную копию необходимого объекта.

Когда использовать: 
   	1. Когда создать новый объект очень проблематично (напр. требует подгрузку из БД, проще скопировать текущий объект и поменять в нем несколько полей).
Примечание: 
	Также есть глубокое и поверхностное копирование.


Метод реализуемый для поддержки глубокого копирования.

-(instancetype) copyWithZone:(NSZone *)zone {
    
    Person* copy   = [[self class] allocWithZone:zone];
    copy.firstName = self.firstName;
    copy.lastName  = self.lastName;
    copy.age       = self.age;
    
    return copy;
}
