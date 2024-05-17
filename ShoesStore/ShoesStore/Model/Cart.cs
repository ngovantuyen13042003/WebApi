using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class Cart
{
    public int Id { get; set; }

    public string? Status { get; set; }

    public DateTime? CreateAt { get; set; }

    public bool Enable { get; set; }

    public int? CustomerId { get; set; }

    public virtual ICollection<CartItem> CartItems { get; set; } = new List<CartItem>();

    public virtual Customer? Customer { get; set; }
}
