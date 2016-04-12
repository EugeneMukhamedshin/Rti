﻿using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDrawingRepository
    {
        IList<Drawing> GetAllActive();

        IList<Drawing> GetPage(int page, int pageSize);
    }
}