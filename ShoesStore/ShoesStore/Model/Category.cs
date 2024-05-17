﻿using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class Category
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public virtual ICollection<Shoe> Shoes { get; set; } = new List<Shoe>();
}
