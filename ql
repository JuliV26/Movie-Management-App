[33mcommit 75ddf2e0e41db53a76bd5a69d48b3d722ad4c165[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mfix-migration[m[33m, [m[1;31morigin/fix-migration[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 27 16:18:14 2026 +0200

    Add migration.sql

[33mcommit 3657f54eed9be3584f70f0f9ede9a293dd8e9c9e[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 27 16:02:47 2026 +0200

    Delete database credentials from .env
    
    Remove database configuration from .env file

[33mcommit 989b96422a90e382b1dfc225f168361f7cb51337[m
Merge: cccf008 39deb7a
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 27 16:00:58 2026 +0200

    Merge branch 'main' into fix-migration

[33mcommit cccf0087dd9e9fb6d775e52ded787acc64087ccc[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 27 15:59:35 2026 +0200

    Fix migration logic and add .env

[33mcommit 39deb7a33fa000f593da6a34516f240953bcb798[m[33m ([m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 27 00:39:40 2026 +0200

    Add new movie to movies.json

[33mcommit abb660c5ab8ba768605b264bd0994311df11db38[m
Merge: 3fa4312 3970db5
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 27 00:20:17 2026 +0200

    refactoring the movies.json file
    
    refactoring the movies.json file

[33mcommit 3970db5ff8f044621a169c616efaf24e454ceb2e[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 27 00:19:00 2026 +0200

    refactoring the movies.json file

[33mcommit 3fa43124bc2b501afcb1c078f9ad29259ca1a2cc[m
Merge: ae706d6 862847b
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Sun Feb 22 13:36:27 2026 +0200

    adding Maven dependencies
    
    adding Maven dependencies

[33mcommit 862847ba2dc6e7919b76c693bf6ad308d8bf8513[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Sun Feb 22 13:35:30 2026 +0200

    adding Maven dependencies

[33mcommit ae706d6f41d5e289d52a76ea89c53a6146b17c54[m[33m ([m[1;32mmain[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Sun Feb 22 13:33:37 2026 +0200

    Add a correction to the migration file

[33mcommit fa8f667e89f58faae0836d8dff86d5a57ba59a7d[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Sun Feb 22 13:18:02 2026 +0200

    Add migration.py

[33mcommit 89ce4bd64863e17580f001f10020e2526e923a3f[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Sun Feb 22 12:31:07 2026 +0200

    update the sql file

[33mcommit 12b43e7eb46875ab741401cbe7d538cf059dcd36[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Thu Feb 19 20:29:33 2026 +0200

    Update README
    
    Added functionality details for user and movie management.

[33mcommit a8230abc8615602c9131a4603de1a5641db46620[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Thu Feb 19 20:27:13 2026 +0200

    Update README.md
    
    Updated the README to enhance clarity and added features.

[33mcommit de22f614529a8ba4ca807e460723275cb2a2fd1b[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Thu Feb 19 18:48:42 2026 +0200

    Refactor users table structure
    
    Updated 'users' table to change 'first_name' and 'second_name' to 'name'.

[33mcommit 5c8b248ed42c2e98f1893b24631195232a4f5557[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Thu Feb 19 18:43:52 2026 +0200

    Modifying users table to use TIMESTAMPTZ for timestamps
    
    Updated created_on and last_login fields to use TIMESTAMPTZ with default values.

[33mcommit b4bb1f9c0e7e6165c122001db4c3de196e8881db[m
Merge: caefbdf cdc3374
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 13 16:12:20 2026 +0200

    Refactoring the Metadata class again
    
    refactoring the Metadata class again

[33mcommit cdc337403afe6451ff3d8707cc9f8e3ead90dec8[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 13 16:11:19 2026 +0200

    refactoring the Metadata class again

[33mcommit caefbdfc2ee1a1b87d9bccafcf89173efc9ba775[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 13 15:48:26 2026 +0200

    SQL  tables

[33mcommit 135fa3358f256bff05b9d53e27046f21e424b435[m
Merge: 18c3e21 eb2c397
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 13 10:39:25 2026 +0200

    Merge pull request #15 from JuliV26/delete_metadata
    
    Refactoring the Metadata class

[33mcommit eb2c39732cecf8c6bc724ab7eb0f6a2a5f9c52f9[m
Merge: 55c394b 9bdefac
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 13 10:37:25 2026 +0200

    Merge remote-tracking branch 'origin/bcrypt' into bcrypt
    
    # Conflicts:
    #       src/Main.java

[33mcommit 55c394bb692aec6098b7da3d466f71b0cbded809[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 13 10:36:57 2026 +0200

    refactoring the Metadata class

[33mcommit 18c3e2111fcba5f5382905a8af851ffa75594c49[m
Merge: bd56cb7 9bdefac
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 6 16:32:25 2026 +0200

    Merge pull request #14 from JuliV26/bcrypt
    
    Bcrypt hashing+ saveTojson

[33mcommit 9bdefac99ed0d98fda1be173953c239a94812c08[m[33m ([m[1;31morigin/bcrypt[m[33m)[m
Merge: 1286174 bd56cb7
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Feb 6 16:32:13 2026 +0200

    Merge branch 'main' into bcrypt

[33mcommit 12861745b8c0f1379b83690ea044b1e3754202fa[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 6 16:30:49 2026 +0200

    dry code for saveJson+ hashing

[33mcommit 68ad6f50510288e51da598e3fe9127b54e124251[m[33m ([m[1;31morigin/hashing+dry_code[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Feb 6 16:25:40 2026 +0200

    dry code for saveJson+ hasing

[33mcommit bd56cb7074f328c16f04f9484a25afb0a61c76b4[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 30 13:27:31 2026 +0200

    Update Main.java

[33mcommit 28e0f19caf4cfb7ed64ad75c3301c04037f6378c[m
Merge: b32fbb0 db44698
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 30 13:25:58 2026 +0200

    Merge pull request #12 from JuliV26/login+register
    
    Login+register

[33mcommit db446983b71ea36e53699d69fe9a154ccf8dc2ec[m[33m ([m[1;31morigin/login+register[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 13:25:17 2026 +0200

    review_rate+login/register2

[33mcommit 0e6b0ab4b839f5375a53f14c5b805cf8da0e309c[m[33m ([m[1;31morigin/register[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 13:23:20 2026 +0200

    review_rate+login/register2

[33mcommit 786d154d6e51266209e33911e8f5113e81702afd[m[33m ([m[1;31morigin/pagination[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 13:03:37 2026 +0200

    review_rate+login/register1

[33mcommit 84dc59bcebd3b70dea2ed0d1fb06530044e4ee6c[m
Merge: ffcb8a8 fd5f8a6
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 13:00:23 2026 +0200

    Merge remote-tracking branch 'origin/pagination' into pagination

[33mcommit ffcb8a82618937bbfd02ed63bbef879bd42e6a2b[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 12:59:02 2026 +0200

    review_rate+login/register

[33mcommit fd5f8a6e231c6b976e22642afed9b2e5ceeab987[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 12:59:02 2026 +0200

    review_rate+login/register

[33mcommit b32fbb0daaf2f8c42fbc7f5f8cc593033f358c02[m
Merge: eb30894 248958b
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 30 12:58:19 2026 +0200

    Merge pull request #10 from JuliV26/pagination
    
    review_rate+login/register

[33mcommit 248958b0c2985b747fdb532a17c3b83957d99928[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 30 12:57:04 2026 +0200

    review_rate+login/register

[33mcommit eb308942b4d6cde137ad33572fd28c07417f8985[m
Merge: c2f2549 4a6f2a0
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 23 14:22:25 2026 +0200

    Merge pull request #9 from JuliV26/pagination
    
    Pagination

[33mcommit 4a6f2a0907be2c4c36fd46689b2017f8ee6e3976[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 23 14:21:53 2026 +0200

    pagination-final

[33mcommit d0391e95166686332b876f3231f6061862bf3722[m[33m ([m[1;31morigin/metadata_review[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 23 14:19:40 2026 +0200

    pagination-final

[33mcommit 0d590c49dca023545b7bf756e61af47dce03a06f[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 23 14:18:09 2026 +0200

    pagination-final

[33mcommit c2f254935fc4efd7b078ef8907679bc2323986ec[m
Merge: 17575dd bc1d8fe
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 23 14:12:26 2026 +0200

    Merge pull request #8 from JuliV26/metadata_review
    
    pagination-1

[33mcommit bc1d8fe0630e758a7c052970a1f3a5953ee0c1db[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 23 14:11:35 2026 +0200

    pagination-1

[33mcommit 17575dd45f08624844193c6d326a3a1b8d5f5a80[m
Merge: fedca89 1dd69fb
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 23 13:57:39 2026 +0200

    Merge pull request #7 from JuliV26/metadata_review
    
    pagination

[33mcommit 1dd69fb81c6e2919758235e341b3edb210999137[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 23 13:56:33 2026 +0200

    pagination

[33mcommit fedca895ecb9f0e1e1fbed363882348317ecede4[m
Merge: e9db6e3 e7bb764
Author: Pavlin Nikolov <pnikolow1337@gmail.com>
Date:   Sun Jan 18 14:30:04 2026 +0200

    Merge pull request #6 from JuliV26/add-mission-impossible
    
    Add a lot more movies

[33mcommit e7bb764228051d846f88ee207a5fb4555a53e40c[m[33m ([m[1;31morigin/add-mission-impossible[m[33m)[m
Author: I760598 <pavlin.nikolov01@sap.com>
Date:   Sun Jan 18 14:29:38 2026 +0200

    Add a lot more movies

[33mcommit e9db6e343efffcd25f51aadd2633bd1ec4711891[m
Merge: 671468c aa1b355
Author: Pavlin Nikolov <pnikolow1337@gmail.com>
Date:   Sun Jan 18 14:21:03 2026 +0200

    Merge pull request #5 from JuliV26/add-mission-impossible
    
    Add Mission Impossible to the movies list

[33mcommit aa1b3554c3672ae79358f005c2ab820e3cbbb1db[m
Author: I760598 <pavlin.nikolov01@sap.com>
Date:   Sun Jan 18 14:20:38 2026 +0200

    Add Mission Impossible to the movies list

[33mcommit 671468c2a1adda7a6964458444fa11cfcb2e07d7[m
Merge: 510b048 091f300
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Thu Jan 15 14:30:42 2026 +0200

    Merge pull request #4 from JuliV26/metadata_review
    
    metadata+reviews & ratings+json

[33mcommit 091f300b0f0d65eef1ad3475c772ba956f47f8af[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Thu Jan 15 14:28:57 2026 +0200

    metadata+reviews & ratings+json

[33mcommit 510b0489ccbae8c7aa3989d31ea00ab200417fb2[m
Merge: 5787d3c 99f05b4
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 9 17:34:15 2026 +0200

    Merge pull request #3 from JuliV26/prettify_json
    
    json fixed 2

[33mcommit 99f05b41fee3ab669e9e8990fa29eedf886aa2c6[m[33m ([m[1;31morigin/prettify_json[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 9 17:33:37 2026 +0200

    json fixed 2

[33mcommit 5787d3c69a3964b5e7ef4890106848d0ff4e3c21[m
Merge: 12dd266 7326ac4
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 9 17:19:15 2026 +0200

    Merge pull request #2 from JuliV26/nov_json
    
    json fixed

[33mcommit 7326ac476de3fd9d035cf6cbcd9966c6375bac3f[m[33m ([m[1;31morigin/nov_json[m[33m)[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 9 17:17:32 2026 +0200

    json fixed

[33mcommit 12dd266504dcad59dc92227ec76f0714bd230800[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 9 14:59:17 2026 +0200

    Fix  error in README description

[33mcommit 94adbde8c333c059cdecb80e7648a2e9b3771be1[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 9 14:54:38 2026 +0200

    Fix grammatical error in README.md

[33mcommit 590b47aa596a586d2b10ca2def1e32463bbbdef6[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 9 14:54:23 2026 +0200

    Fix typo in README description

[33mcommit aef68dc892c9fbe495296d444acf1b48d9c6e9a5[m
Author: Juliet Valcheva <j.valcheva26@gmail.com>
Date:   Fri Jan 9 13:26:56 2026 +0200

    Добави описание на приложението
    
    Добавено описание на конзолното приложение за управление на филми.

[33mcommit 33eff07fef39f21547c378383fdacc79e53fa121[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 9 13:22:55 2026 +0200

    1 try

[33mcommit 2fbf5fe6238ab3cf5c37944eaed59debd18458a9[m
Author: JuliV26 <j.valcheva26@gmail.com>
Date:   Fri Jan 9 13:16:29 2026 +0200

    1 try
