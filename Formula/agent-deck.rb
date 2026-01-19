# typed: false
# frozen_string_literal: true

class AgentDeck < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/asheshgoplani/agent-deck"
  version "0.8.65"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.65/agent-deck_0.8.65_darwin_amd64.tar.gz"
      sha256 "5228cef05edfda60f679c7b6427fce7b1d63399a340250fba26b96504918ce94"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.65/agent-deck_0.8.65_darwin_arm64.tar.gz"
      sha256 "67f2c57ee635507d64609824651bdd74be5409314498017de849e6e9689a90bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.65/agent-deck_0.8.65_linux_amd64.tar.gz"
      sha256 "cb374dc8a1920f78e54dac55465a7b99d84cbe3b7c9737eec251f16664202005"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.65/agent-deck_0.8.65_linux_arm64.tar.gz"
      sha256 "e218e27d08e04907d31e0499411211130f8d722e287e23b15863d12de75a6ce2"
    end
  end

  depends_on "tmux"

  def install
    bin.install "agent-deck"
  end

  test do
    system "#{bin}/agent-deck", "version"
  end
end
