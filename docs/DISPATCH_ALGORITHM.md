# Emergency Resource Allocation & Dispatch Algorithm

## Heuristic Formulation
The allocation engine ranks candidate responders $R_i$ within radius $D_{max}$ using a weighted utility score:

$$S_i = w_d \cdot (1 - \frac{d_i}{D_{max}}) + w_s \cdot V_{siren} + w_e \cdot E_i$$

Where:
- $d_i$: Haversine distance between emergency coordinate and responder.
- $V_{siren}$: Priority weight by vehicle type capability.
- $E_i$: Responder historical acknowledgement speed metric.

## Automatic Escalation
If no acknowledgement is received within 30 seconds:
1. Expansion of search radius by 5 km.
2. Broadcast alert to secondary responders.
3. Fallback SMS dispatch trigger.
