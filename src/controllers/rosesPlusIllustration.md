# Illustration of `rosesPlus` Function Execution

The `rosesPlus` function calculates and distributes referral commissions up to 6 levels deep when a user places a bet. Below is an example scenario to illustrate its execution.

---

## **Scenario Setup**

1. **Referral Hierarchy**:
   - **User A** (Level 6, Total Money: 500) refers **User B**.
   - **User B** (Level 5, Total Money: 300) refers **User C**.
   - **User C** (Level 4, Total Money: 200) refers **User D**.
   - **User D** (Level 3, Total Money: 150) refers **User E**.
   - **User E** (Level 2, Total Money: 120) refers **User F**.

2. **Level Commission Rates** (from the `level` table):
   - **Level 1**: 10% (0.10)
   - **Level 2**: 5% (0.05)
   - **Level 3**: 3% (0.03)
   - **Level 4**: 2% (0.02)
   - **Level 5**: 1% (0.01)
   - **Level 6**: 0.5% (0.005)

3. **User F Places a Bet**:
   - **Bet Amount**: 1000 TRX.

---

## **Execution of `rosesPlus`**

### **Step-by-Step Execution**

1. **Input to `rosesPlus`**:
   - `auth`: Token of User F.
   - `money`: 1000 TRX.

2. **Step 1: Fetch User F's Information**:
   - Query: 
     ```sql
     SELECT phone, code, invite, user_level, total_money 
     FROM users 
     WHERE token = ? AND veri = 1 LIMIT 1;
     ```
   - Result: User F's [invite](http://_vscodecontentref_/1) code points to **User E**.

3. **Step 2: Fetch User E's Information (F1)**:
   - Query: 
     ```sql
     SELECT phone, code, invite, rank, user_level, total_money 
     FROM users 
     WHERE code = ? AND veri = 1 LIMIT 1;
     ```
   - Result: User E is eligible (Level 2, Total Money: 120).

4. **Step 3: Calculate Commission for User E**:
   - Commission = `(1000 / 100) * 0.10 = 100 TRX`.
   - Update User E's balance and log the transaction:
     ```sql
     UPDATE users 
     SET money = money + 100, roses_f = roses_f + 100, roses_today = roses_today + 100 
     WHERE phone = ?;

     INSERT INTO roses (phone, code, invite, f1, time) 
     VALUES (?, ?, ?, 100, ?);
     ```

5. **Step 4: Fetch User D's Information (F2)**:
   - Query: 
     ```sql
     SELECT phone, code, invite, rank, user_level, total_money 
     FROM users 
     WHERE code = ? AND veri = 1 LIMIT 1;
     ```
   - Result: User D is eligible (Level 3, Total Money: 150).

6. **Step 5: Calculate Commission for User D**:
   - Commission = `(1000 / 100) * 0.05 = 50 TRX`.
   - Update User D's balance and log the transaction:
     ```sql
     UPDATE users 
     SET money = money + 50, roses_f = roses_f + 50, roses_today = roses_today + 50 
     WHERE phone = ?;

     INSERT INTO roses (phone, code, invite, f1, time) 
     VALUES (?, ?, ?, 50, ?);
     ```

7. **Step 6: Fetch User C's Information (F3)**:
   - Query: 
     ```sql
     SELECT phone, code, invite, rank, user_level, total_money 
     FROM users 
     WHERE code = ? AND veri = 1 LIMIT 1;
     ```
   - Result: User C is eligible (Level 4, Total Money: 200).

8. **Step 7: Calculate Commission for User C**:
   - Commission = `(1000 / 100) * 0.03 = 30 TRX`.
   - Update User C's balance and log the transaction:
     ```sql
     UPDATE users 
     SET money = money + 30, roses_f = roses_f + 30, roses_today = roses_today + 30 
     WHERE phone = ?;

     INSERT INTO roses (phone, code, invite, f1, time) 
     VALUES (?, ?, ?, 30, ?);
     ```

9. **Step 8: Fetch User B's Information (F4)**:
   - Query: 
     ```sql
     SELECT phone, code, invite, rank, user_level, total_money 
     FROM users 
     WHERE code = ? AND veri = 1 LIMIT 1;
     ```
   - Result: User B is eligible (Level 5, Total Money: 300).

10. **Step 9: Calculate Commission for User B**:
    - Commission = `(1000 / 100) * 0.02 = 20 TRX`.
    - Update User B's balance and log the transaction:
      ```sql
      UPDATE users 
      SET money = money + 20, roses_f = roses_f + 20, roses_today = roses_today + 20 
      WHERE phone = ?;

      INSERT INTO roses (phone, code, invite, f1, time) 
      VALUES (?, ?, ?, 20, ?);
      ```

11. **Step 10: Fetch User A's Information (F5)**:
    - Query: 
      ```sql
      SELECT phone, code, invite, rank, user_level, total_money 
      FROM users 
      WHERE code = ? AND veri = 1 LIMIT 1;
      ```
    - Result: User A is eligible (Level 6, Total Money: 500).

12. **Step 11: Calculate Commission for User A**:
    - Commission = `(1000 / 100) * 0.01 = 10 TRX`.
    - Update User A's balance and log the transaction:
      ```sql
      UPDATE users 
      SET money = money + 10, roses_f = roses_f + 10, roses_today = roses_today + 10 
      WHERE phone = ?;

      INSERT INTO roses (phone, code, invite, f1, time) 
      VALUES (?, ?, ?, 10, ?);
      ```

13. **Step 12: No Further Referrer**:
    - Query: 
      ```sql
      SELECT phone, code, invite, rank, user_level, total_money 
      FROM users 
      WHERE code = ? AND veri = 1 LIMIT 1;
      ```
    - Result: No further referrer found. Exit the loop.

---

## **Final Outcome**

- **Commissions Distributed**:
  - **User E**: 100 TRX.
  - **User D**: 50 TRX.
  - **User C**: 30 TRX.
  - **User B**: 20 TRX.
  - **User A**: 10 TRX.

- **Database Updates**:
  - Each user's balance ([money](http://_vscodecontentref_/2)), daily roses (`roses_today`), and total roses (`roses_f`) are updated.
  - Transactions are logged in the `roses` table.

---

## **Summary**

The [rosesPlus](http://_vscodecontentref_/3) function successfully calculates and distributes referral commissions across the hierarchy, ensuring that each eligible referrer receives their share based on their level and the commission rates. This process is repeated up to 6 levels or until no further referrer is found.