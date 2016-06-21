using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum DetailType
    {
        [Display(Name = "К1")]
        MoldingRound1,
        [Display(Name = "К2")]
        MoldingRound2,
        [Display(Name = "К3")]
        MoldingRound3,
        [Display(Name = "К4")]
        MoldingRound4,
        [Display(Name = "П1")]
        MoldingSquare1,
        [Display(Name = "П2")]
        MoldingSquare2,
        [Display(Name = "П3")]
        MoldingSquare3,
        [Display(Name = "ВЛ")]
        LaserCutting,
        [Display(Name = "Другой")]
        Other}
}