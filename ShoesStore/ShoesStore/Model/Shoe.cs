using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class Shoe
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public int Quantity { get; set; }

    public double Price { get; set; }

    public bool Enable { get; set; }

    public int? CategoryId { get; set; }

    public virtual ICollection<CartItem> CartItems { get; set; } = new List<CartItem>();

    public virtual Category? Category { get; set; }

    public virtual ICollection<ImageProduct> ImageProducts { get; set; } = new List<ImageProduct>();

    public virtual ICollection<OrderItem> OrderItems { get; set; } = new List<OrderItem>();
}
