CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username TEXT,
    password TEXT
);

CREATE TABLE events(
    id SERIAL PRIMARY KEY,
    event_name TEXT,
    event_date_time TIMESTAMP,
    event_category TEXT[],
    organizer INT REFERENCES users(id),
    event_user TEXT,
    event_description TEXT
);

CREATE TABLE past_events(
    id SERIAL PRIMARY KEY,
    event_name TEXT,
    event_date_time TIMESTAMP,
    event_category TEXT[],
    organizer INT REFERENCES users(id),
    event_user TEXT,
    event_description TEXT
);

CREATE TABLE participants(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    event_id INT REFERENCES events(id),
    username TEXT
);

CREATE TABLE messages(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    username TEXT,
    event_id INT REFERENCES events(id),
    title TEXT,
    content TEXT
);

INSERT INTO users (username, password) VALUES ('Test_user', '   ');
INSERT INTO events (event_name, event_date_time, event_category, organizer, event_user, event_description) VALUES ('Hackathon', '2025-09-04 18:15:00', '{8}', 1, 'Test_user', 'Join Us for an Exciting Hackathon This September!Are you ready to innovate, collaborate, and push the boundaries of technology? This September, we invite you to participate in an exhilarating Hackathon, where creative minds come together to solve real-world challenges!Whether you are a developer, designer, entrepreneur, or tech enthusiast, this event is your chance to network with like-minded individuals, showcase your skills, and bring your ideas to life. Expect an inspiring atmosphere, expert mentorship, and fantastic prizes for the best projects!');
INSERT INTO events (event_name, event_date_time, event_category, organizer, event_user, event_description) VALUES ('Board Game Night', '2025-08-14 17:30:00', '{2}', 1, 'Test_user', 'Get ready for an evening of strategy, laughter, and friendly competition! Whether you are a board game veteran or just looking to try something new, our Board Game Night is the perfect place to meet new people and enjoy some classic and modern games.Bring your friends or come solo we will have a variety of games available, from quick party games to deep strategy challenges. Snacks, good vibes, and great company are guaranteed!');