# typed: false
# frozen_string_literal: true

class AgentDeck < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/asheshgoplani/agent-deck"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.5.8/agent-deck_0.5.8_darwin_amd64.tar.gz"
      sha256 "9041f2be7b74c2e51728df93c3e0d71675becc8369913f83e1f2efc01a5f09bb"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.5.8/agent-deck_0.5.8_darwin_arm64.tar.gz"
      sha256 "b9d2f79161daae1e6e56d38e4c94ee7fd08c6a6133db8fba90e9e0c9c1247e67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.5.8/agent-deck_0.5.8_linux_amd64.tar.gz"
      sha256 "6534c3e91b02f6ddfe145248aacc2f7c5283341f6df559515c95b72243b595be"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.5.8/agent-deck_0.5.8_linux_arm64.tar.gz"
      sha256 "699708e7de7c1cfeffd9e7b453e0a51ad081aafffaa21a766f4abca05be37d68"
    end
  end

  depends_on "tmux"

  def install
    bin.install "agent-deck"
  end

  test do
    assert_match "agent-deck version", shell_output("#{bin}/agent-deck version")
  end
end
