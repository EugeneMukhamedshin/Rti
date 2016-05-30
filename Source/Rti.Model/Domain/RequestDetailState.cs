namespace Rti.Model.Domain
{
    public enum RequestDetailState
    {
        New = 0,
        ReadyToProduce = 1,
        InProduction = 2,
        Done = 3,
        Shipped = 4
    }
}