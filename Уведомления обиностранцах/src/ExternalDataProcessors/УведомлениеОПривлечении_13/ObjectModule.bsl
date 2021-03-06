#Область СведенияОВнешнейОбработке
	
// Возвращает сведения о внешней обработке.
Функция СведенияОВнешнейОбработке() Экспорт
	
	ПараметрыРегистрации 		= ДополнительныеОтчетыИОбработки.СведенияОВнешнейОбработке("3.0.1.355");
	ПараметрыРегистрации.Вид 	= ДополнительныеОтчетыИОбработкиКлиентСервер.ВидОбработкиПечатнаяФорма();
	ПараметрыРегистрации.Версия 			= "2.4.6";
	ПараметрыРегистрации.БезопасныйРежим 	= Истина;
	ПараметрыРегистрации.Наименование 		= "Уведомление о привлечении иностранца прил.13";
	ПараметрыРегистрации.Информация 		= "формирование документа WORD";
	
	МассивНазначений = Новый Массив();
	МассивНазначений.Добавить("Документ.ПриемНаРаботу");										
	МассивНазначений.Добавить("Документ.ПриемНаРаботуСписком");
	ПараметрыРегистрации.Вставить("Назначение", МассивНазначений);
  
  
	НоваяКоманда = ПараметрыРегистрации.Команды.Добавить();
	НоваяКоманда.Представление = НСтр("ru = 'Уведомление о привлечении иностранца прил.13'");
	НоваяКоманда.Идентификатор = "ПФ_MXL_УведомлениеОПривлечении_13";
	НоваяКоманда.Использование = ДополнительныеОтчетыИОбработкиКлиентСервер.ТипКомандыВызовКлиентскогоМетода();
	
		
	Возврат ПараметрыРегистрации;
	
КонецФункции


#КонецОбласти 
