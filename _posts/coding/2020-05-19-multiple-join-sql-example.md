---
date: 2020-05-19
title: multiple join sql example
category: coding
---
# multiple join sql example

直接写SQL的好处：
1. 永远都只需使用数据表的名字（无需考虑单复数）
2. 思维不再受Rails Active Record束缚（只需从数据库层面思考数据关系）
2. 可以以任何方式Join任何表（只要有共同的ID）

```
SELECT industries.id as industry_id, industries.name as industry_name, challenges.id as challenges_id, challenges.name as challenges_name, solution_types.id as solution_type_id, solution_types.name as solution_type_name, targets.id as target_id, targets.name as target_name, sdgs.id as sdg_id, sdgs.name as sdg_name from challenges
    INNER JOIN challenges_solution_types cst on cst.challenge_id = challenges.id
    INNER JOIN solution_types on solution_types.id = cst.solution_type_id
    INNER JOIN industries_challenges ic on ic.challenge_id = challenges.id
    INNER JOIN industries on industries.id = ic.industry_id
    INNER JOIN industries_solution_types ist on ist.
    INNER JOIN targets on targets.id = solution_types.target_id
    INNER JOIN sdgs on sdgs.id = targets.sdg_id
WHERE industries.id = 1 AND challenges.id = 40
```
