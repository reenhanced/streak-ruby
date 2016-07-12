module Streak
  class Webhook < StreakObject
    def self.all(pipeline_key)
      res = Streak.request(:get, "/pipelines/#{pipeline_key}/webhooks", {}, {}, 2)
      convert_to_streak_object(res, Webhook)
    end

    def self.find(webhook_key)
      res = Streak.request(:get, "/webhooks/#{webhook_key}", {}, {}, 2)
      convert_to_streak_object(res, Webhook)
    end

    def self.create(pipeline_key, params)
      res = Streak.request(:post, "/pipelines/#{pipeline_key}/webhooks", MultiJson.dump(params), {content_type: 'application/json'}, 2)
      convert_to_streak_object(res, Webhook)
    end

    def self.edit(webhook_key, params)
      res = Streak.request(:post, "/webhooks/#{webhook_key}", MultiJson.dump(params), {content_type: 'application/json'}, 2)
      convert_to_streak_object(res, Webhook)
    end

    def self.delete(webhook_key)
      res = Streak.request(:delete, "/webhooks/#{webhook_key}", {}, {}, 2)
      convert_to_streak_object(res, Webhook)
    end
  end
end

