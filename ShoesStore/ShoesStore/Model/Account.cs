using System;
using System.Collections.Generic;

namespace ShoesStore.Model;

public partial class Account
{
    public int Id { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string PhoneNumber { get; set; } = null!;

    public string? Role { get; set; }

    public bool Enable { get; set; }

    public virtual ICollection<Customer> Customers { get; set; } = new List<Customer>();
}
