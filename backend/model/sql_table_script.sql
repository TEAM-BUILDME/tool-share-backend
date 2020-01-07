/*
first create the database, and admin, then can run the sql script
DB_USER =
DB_HOST =
DB_DATABASE =
DV_PASS =
DB_PORT =

*/
CREATE TABLE user (user_id SERIAL PRIMARY KEY,
                                          first_name VARCHAR(20),
                                                     last_name VARCHAR(20),
                                                               username VARCHAR(20),
                                                                        join_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(2),
                                                                                                    email TEXT NOT NULL UNIQUE,
                                                                                                                        pword TEXT NOT NULL);


INSERT INTO user (first_name,
                  last_name,
                  username,
                  email,
                  pword)
VALUES("John",
       "Schm",
       "",
       "js@example.com",
       "1234"),("James",
                "Smith",
                "djAdvenger",
                "js2@example.com",
                "1234"),("Shohei",
                         "Design",
                         "the man",
                         "sd@example.com",
                         "1234"),("Morgan",
                                  "test",
                                  "Captain",
                                  "MTC@example.com",
                                  "1234");

/* groups */
CREATE TABLE group(gp_name)
INSERT INTO
group (gp_name)
VALUES("fellows"),("works"),("super friends");

/* tools of groups */
CREATE TYPE status AS ENUM ('available', 'unavailable', 'other');


CREATE TABLE tool
    (tool_id SERIAL PRIMARY KEY,
                            name VARCHAR(20),
                                 tool_type VARCHAR(20),
                                           note TEXT, tool_status status,
                                                      submit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(2),
                                                                                    owner_id SERIAL REFERENCES users(user_ID) ON DELETE CASCADE);


INSERT INTO tool(name,tool_type,note,tool_status,owner_id)
VALUES("hamer",
       "hand tool",
       "swing hard",
       "available",
       1),("Jack hammer",
           "power tool",
           "hold on tight",
           "unavailable",
           2),("drill",
               "power tool",
               "cordless",
               "other",
               3),("saq",
                   "power tool",
                   "corded",
                   "other",
                   2);

/* linked list for group and user */
CREATE TABLE link_group_user
    (link_id SERIAL PRIMARY KEY,
                            group_id SERIAL REFERENCES group(group_id) ON DELETE CASCADE,
                                                                                 user_id SERIAL REFERENCES users(user_ID) ON DELETE CASCADE);


INSERT INTO link_group_user(group_id,user_id);


VALUES(1,
       2),(2,
           2),(1,
               1),(1,
                   3),(3,
                       1);

/* linked list for group and tool */
CREATE TABLE link_group_tool(tool_id,
                             group_id);


VALUES (1,
        1),(2,
            2),(3,
                3),(4,
                    3);