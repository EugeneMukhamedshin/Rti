namespace Rti.Model.Domain.ReportEntities
{
    public enum RequestStatus
    {
        WorkNotStarted,             // Работа еще не начата
        WorkStartedEarly,           // Работа по заявке начата заранее
        WorkStartedJustInTime,      // Работа начата точно во время
        WorkStartedTardily,         // Работа начата поздно
        Shipped,                    // Отгружена
        ShipmentDateIsPast          // Прошла дата отгрузки, а заявку еще не отгрузили
    }
}