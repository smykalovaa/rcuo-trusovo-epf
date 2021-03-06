﻿
&НаКлиенте
Процедура РаспечататьКарточку(Команда)
	РаспечататьНаСервере();
КонецПроцедуры

&НаСервере
Процедура РаспечататьНаСервере()
	МассивОбъектов = Новый Массив;
	МассивОбъектов.Добавить(ЛицевойСчет);
	ОбъектОбработка = РеквизитФормыВЗначение("Объект");
	ПараметрыПечати = Новый Структура("НачалоПериода, КонецПериода", НачалоМесяца(ПериодС), КонецМесяца(ПериодПо));
	Макет = ОбъектОбработка.ПолучитьМакет("КарточкаЛицевогоСчета");
	Результат.Очистить();
	Результат.Вывести(ОбъектОбработка.ПолучитьТабличныйДокумент(МассивОбъектов, Неопределено, ПараметрыПечати, Макет));
КонецПроцедуры