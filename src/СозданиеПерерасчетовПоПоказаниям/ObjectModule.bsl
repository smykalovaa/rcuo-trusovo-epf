﻿Функция СведенияОВнешнейОбработке() Экспорт
	
	РегистрационныеДанные = Новый Структура;
	РегистрационныеДанные.Вставить("Наименование", "Создание перерасчетов по показаниям");
	РегистрационныеДанные.Вставить("Назначение", "");    
	РегистрационныеДанные.Вставить("БезопасныйРежим", Истина);
	РегистрационныеДанные.Вставить("Версия", "1.0.0");
	РегистрационныеДанные.Вставить("Вид", "ДополнительнаяОбработка");
	РегистрационныеДанные.Вставить("Информация", "Создание перерасчетов по показаниям");

	ТЗ = Новый ТаблицаЗначений;
	ТЗ.Колонки.Добавить("Идентификатор");
	ТЗ.Колонки.Добавить("Представление");
	ТЗ.Колонки.Добавить("Модификатор");
	ТЗ.Колонки.Добавить("ПоказыватьОповещение");
	ТЗ.Колонки.Добавить("Использование");

	стрТЗ = ТЗ.Добавить();
	стрТЗ.Идентификатор = "Создание перерасчетов по показаниям";
	стрТЗ.Представление = "Создание перерасчетов по показаниям";
	стрТЗ.ПоказыватьОповещение = Ложь;
	стрТЗ.Использование = "ОткрытиеФормы";

	РегистрационныеДанные.Вставить("Команды", ТЗ);
	
	
	Возврат РегистрационныеДанные;

КонецФункции