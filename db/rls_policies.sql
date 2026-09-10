-- Row-Level Security (RLS) Policies for Lab 5.2
-- Demonstrates user isolation: each user can only see/modify their own tasks.

ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE tasks ENABLE ROW LEVEL SECURITY;

-- Users can only view their own profile row.
CREATE POLICY users_select_own ON users
    FOR SELECT
    USING (id = current_setting('app.current_user_id', true)::UUID);

-- Users can only view tasks that belong to them.
CREATE POLICY tasks_select_own ON tasks
    FOR SELECT
    USING (user_id = current_setting('app.current_user_id', true)::UUID);

-- Users can only insert tasks under their own user_id.
CREATE POLICY tasks_insert_own ON tasks
    FOR INSERT
    WITH CHECK (user_id = current_setting('app.current_user_id', true)::UUID);

-- Users can only update their own tasks.
CREATE POLICY tasks_update_own ON tasks
    FOR UPDATE
    USING (user_id = current_setting('app.current_user_id', true)::UUID);

-- Users can only delete their own tasks.
CREATE POLICY tasks_delete_own ON tasks
    FOR DELETE
    USING (user_id = current_setting('app.current_user_id', true)::UUID);

-- Lab usage: set the session's current user before querying, e.g.
--   SET app.current_user_id = 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11';
