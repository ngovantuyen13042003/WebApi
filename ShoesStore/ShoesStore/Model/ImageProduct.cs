using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class ImageProduct
{
    public int Id { get; set; }

    public string Url { get; set; } = null!;

    public int? ShoesId { get; set; }

    public virtual Shoe? Shoes { get; set; }
}
