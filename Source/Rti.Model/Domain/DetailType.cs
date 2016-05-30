using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum DetailType
    {
        [Display(Name = "Фк1")]
        MoldingRound1,
        [Display(Name = "Фк2")]
        MoldingRound2,
        [Display(Name = "Фк3")]
        MoldingRound3,
        [Display(Name = "Фк4")]
        MoldingRound4,
        [Display(Name = "Фп1")]
        MoldingSquare1,
        [Display(Name = "Фп2")]
        MoldingSquare2,
        [Display(Name = "Фп3")]
        MoldingSquare3,
        [Display(Name = "ВЛ")]
        LaserCutting,
        [Display(Name = "Другой")]
        Other
    }
}