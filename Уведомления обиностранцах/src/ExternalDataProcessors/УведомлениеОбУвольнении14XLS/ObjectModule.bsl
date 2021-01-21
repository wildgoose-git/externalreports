#Область СведенияОВнешнейОбработке

Функция СведенияОВнешнейОбработке() Экспорт
	
	ПараметрыРегистрации 		= ДополнительныеОтчетыИОбработки.СведенияОВнешнейОбработке("3.0.2.314");
	ПараметрыРегистрации.Вид 	= ДополнительныеОтчетыИОбработкиКлиентСервер.ВидОбработкиПечатнаяФорма();
	ПараметрыРегистрации.Версия 			= "2.4.8";
	ПараметрыРегистрации.БезопасныйРежим 	= Истина;
	ПараметрыРегистрации.Наименование 		= "Уведомление об увольнении прил.14 (XLS)";
	ПараметрыРегистрации.Информация 		= "формирование документа XLS";
	
	МассивНазначений = Новый Массив();
	МассивНазначений.Добавить("Документ.Увольнение");										
	МассивНазначений.Добавить("Документ.УвольнениеСписком");
	ПараметрыРегистрации.Вставить("Назначение", МассивНазначений);
  
  
	НоваяКоманда = ПараметрыРегистрации.Команды.Добавить();
	НоваяКоманда.Представление = НСтр("ru = 'Уведомление об увольнении прил.14 (XLS)'");
	НоваяКоманда.Идентификатор = "ПФ_MXL_УведомлениеОбУвольнении_14_XLS";
	НоваяКоманда.Использование = ДополнительныеОтчетыИОбработкиКлиентСервер.ТипКомандыВызовКлиентскогоМетода();
	
		
	Возврат ПараметрыРегистрации;
	
КонецФункции

#КонецОбласти 
