# Media server

requirements:

-   enough CPU to do transcoding
-   > 1.0 GiB RAM
-   80GB for music storage
-   ability to increase storage to at least 2x size

# cloud providers

| provider | id            | cpu    | GiB | \$/hr  |
|----------|---------------|--------|-----|--------|
| aws      | t2.nano       | 1      | -   | 0.0065 |
| aws      | t2.micro      | 1      | -   | 0.013  |
| aws      | t2.small      | 1      | -   | 0.026  |
| aws      | t2.medium     | 2      | -   | 0.052  |
| aws      | t2.large      | 2      | -   | 0.104  |
| az       | a0-basic      | 1      | 20  | 0.018  |
| az       | a0-std        | 1      | 20  | 0.02   |
| az       | a1-basic      | 1      | 40  | 0.034  |
| az       | a1-std        | 1      | 70  | 0.06   |
| az       | a2-basic      | 2      | 60  | 0.081  |
| az       | a2-std        | 2      | 135 | 0.12   |
| az       | a3-basic      | 4      | 120 | 0.188  |
| do       | 512gb         | 1      | 20  | 0.007  |
| do       | 1gb           | 1      | 30  | 0.015  |
| do       | 2gb           | 2      | 40  | 0.03   |
| do       | 4gb           | 2      | 60  | 0.06   |
| do       | 8gb           | 4      | 80  | 0.119  |
| gce      | f1-micro      | -      | -   | 0.0056 |
| gce      | f1-micro      | -      | 160 | 0.014  |
| gce      | f1-micro      | -      | 320 | 0.023  |
| gce      | g1-small      | -      | -   | 0.019  |
| gce      | g1-small      | -      | 160 | 0.028  |
| gce      | g1-small      | -      | 320 | 0.036  |
| gce      | n1-standard-1 | 1      | 10  | 0.036  |
| gce      | n1-standard-1 | 1      | 160 | 0.044  |
| gce      | n1-standard-1 | 1      | 320 | 0.053  |
| joy      | std-0.125     | 0.0625 | 3   | 0.003  |
| joy      | std-0.25      | 0.125  | 6   | 0.006  |
| joy      | std-0.5       | 0.25   | 12  | 0.013  |
| joy      | std-1         | 0.5    | 25  | 0.026  |
| joy      | std-2         | 1      | 50  | 0.052  |
| joy      | std-4         | 2      | 100 | 0.105  |
| joy      | std-8         | 4      | 200 | 0.210  |

Sort by price: `sort -k10`

Storage

| provider | type | size | price |
|----------|------|------|-------|
| az       | LRS  | 1gb  | 0.017 |
| do       | ssd  | 1gb  | 0.10  |

| aws      | mag  | 1gb  | 0.05  |
| goog     | std  | 1gb  | 0.04  |
| aws      | gp   | 1gb  | 0.10  |
| aws      | ssd  | 1gb  | 0.125 |
| goog     | ssd  | 1gb  | 0.17  |

Pricing References:

- Google https://cloud.google.com/products/calculator/
- AWS EBS https://aws.amazon.com/ebs/pricing/
- AWS EC2 https://aws.amazon.com/ec2/pricing/
- Digital Ocean https://www.digitalocean.com/pricing/
- Azure https://azure.microsoft.com/en-us/pricing/calculator/
- Joyent https://www.joyent.com/public-cloud/pricing
