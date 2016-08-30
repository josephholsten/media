# Media server

requirements: - enough CPU to do transcoding - 80GB for music storage -
ability to increase storage to at least 2x size

# cloud providers

| provider | id            | cpu    | GiB |  $/mo  | $/hr   |
| do       | 512gb         | 1      |  20 |   5.00 | 0.007  |
| do       | 1gb           | 1      |  30 |  10.00 | 0.015  |
| do       | 2gb           | 2      |  40 |  20.00 | 0.03   |
| do       | 4gb           | 2      |  60 |  40.00 | 0.06   |
| do       | 8gb           | 4      |  80 |  80.00 | 0.119  |
| aws      | t2.nano       | 1      |   - |   4.68 | 0.0065 |
| aws      | t2.micro      | 1      |   - |   9.36 | 0.013  |
| aws      | t2.small      | 1      |   - |  18.72 | 0.026  |
| aws      | t2.medium     | 2      |   - |  37.44 | 0.052  |
| aws      | t2.large      | 2      |   - |  74.88 | 0.104  |
| gce      | f1-micro      | -      |   - |   4.09 | 0.0056 |
| gce      | f1-micro      | -      | 160 |  10.49 | 0.014  |
| gce      | f1-micro      | -      | 320 |  16.89 | 0.023  |
| gce      | g1-small      | -      |   - |  13.80 | 0.019  |
| gce      | g1-small      | -      | 160 |  20.20 | 0.028  |
| gce      | g1-small      | -      | 320 |  26.60 | 0.036  |
| gce      | n1-standard-1 | 1      |  10 |  25.95 | 0.036  |
| gce      | n1-standard-1 | 1      | 160 |  31.95 | 0.044  |
| gce      | n1-standard-1 | 1      | 320 |  38.35 | 0.053  |
| az       | a0 basic      | 1      |  20 |  12.96 | 0.018  |
| az       | a1 basic      | 1      |  40 |  33.84 | 0.047  |
| az       | a2 basic      | 2      |  60 |  67.68 | 0.094  |
| az       | a3 basic      | 4      | 120 | 135.36 | 0.188  |
| az       | a0 std        | 1      |  20 |  14.40 | 0.02   |
| az       | a1 std        | 1      |  70 |  43.20 | 0.06   |
| az       | a2 std        | 2      | 135 |  86.40 | 0.12   |
| joy      | std 0.125     | 0.0625 |   3 |   2.34 | 0.003  |
| joy      | std 0.25      | 0.125  |   6 |   4.75 | 0.006  |
| joy      | std 0.5       | 0.25   |  12 |   9.56 | 0.013  |
| joy      | std 1         | 0.5    |  25 |  19.13 | 0.026  |
| joy      | std 2         | 1      |  50 |  38.33 | 0.052  |
| joy      | std 4         | 2      | 100 |  76.65 | 0.105  |
| joy      | std 8         | 4      | 200 | 153.30 | 0.210  |


Storage

| aws  | gp  | 1gb | 0.10  |
| aws  | ssd | 1gb | 0.125 |
| aws  | mag | 1gb | 0.05  |
| goog | std | 1gb | 0.04  |
| goog | ssd | 1gb | 0.17  |
| az   | L   | 1gb | 0.024 |


https://cloud.google.com/products/calculator/
https://aws.amazon.com/ebs/pricing/
https://aws.amazon.com/ec2/pricing/
https://www.digitalocean.com/pricing/
https://azure.microsoft.com/en-us/pricing/calculator/
https://www.joyent.com/public-cloud/pricing
