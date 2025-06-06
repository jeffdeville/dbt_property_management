{% docs unit_status %}

The status field indicates the current occupancy and availability state of a rental unit.

**Possible values:**

- **vacant** - Unit is empty and available for new tenants to move in
- **rented** - Unit has an active lease agreement but tenant may not have moved in yet
- **occupied** - Unit is currently occupied by tenants who have moved in
- **construction** - Unit is undergoing renovations, repairs, or construction and is not available for occupancy

**Business Logic:**
- Units typically progress from `vacant` → `rented` → `occupied` as tenants are found and move in
- Units may return to `vacant` status when leases end and tenants move out
- `construction` status can occur at any time when maintenance or improvements are needed

{% enddocs %}
