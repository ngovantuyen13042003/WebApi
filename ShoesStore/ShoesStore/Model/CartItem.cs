using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class CartItem
{
    public int CartId { get; set; }

    public int ShoesId { get; set; }

    public int Quantity { get; set; }

    public double Price { get; set; }

    public virtual Cart Cart { get; set; } = null!;

    public virtual Shoe Shoes { get; set; } = null!;
}
