using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class OrderItem
{
    public int Id { get; set; }

    public int? OrderId { get; set; }

    public int Quantity { get; set; }

    public double Price { get; set; }

    public int? ShoesId { get; set; }

    public virtual Order? Order { get; set; }

    public virtual Shoe? Shoes { get; set; }
}
