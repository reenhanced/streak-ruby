module Streak
  class Task < StreakObject
    def self.all(box_key)
      res = Streak.request(:get, "/boxes/#{box_key}/tasks", {}, {}, 2)
      convert_to_streak_object(res, Task)
    end

    def self.find(task_key)
      res = Streak.request(:get, "/tasks/#{task_key}", {}, {}, 2)
      convert_to_streak_object(res, Task)
    end

    def self.create(box_key, params)
      res = Streak.request(:post, "/boxes/#{box_key}/tasks", params, {}, 2)
      convert_to_streak_object(res, Task)
    end

    def self.edit(task_key, params)
      res = Streak.request(:post, "/tasks/#{task_key}", params, {}, 2)
      convert_to_streak_object(res, Task)
    end

    def self.delete(task_key)
      res = Streak.request(:delete, "/tasks/#{task_key}", {}, {}, 2)
      convert_to_streak_object(res, Task)
    end
  end
end
