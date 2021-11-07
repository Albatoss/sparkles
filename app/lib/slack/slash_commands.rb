module Slack
  module SlashCommands
    ParseError = Class.new(StandardError)

    SPARKLE_USER = /\A#{SlackHelper::USER_PATTERN}(\s+(?<reason>.+))?\z/
    STATS = /\Astats(\s+#{SlackHelper::USER_PATTERN})?\z/
    SETTINGS = /\Asettings\z/
    HELP = /\Ahelp\z/

    def self.parse(params)
      case params[:text]
      when SPARKLE_USER
        Slack::SlashCommands::Sparkle.new(params)
      when STATS
        Slack::SlashCommands::Stats.new(params)
      when SETTINGS
        Slack::SlashCommands::Settings.new(params)
      when HELP
        Slack::SlashCommands::Help.new(params)
      else
        raise ParseError
      end
    end
  end
end
