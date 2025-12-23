# typed: false
# frozen_string_literal: true

class AgentDeck < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/asheshgoplani/agent-deck"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.6.0/agent-deck_0.6.0_darwin_amd64.tar.gz"
      sha256 "00a3e3342c0d84f76e651a0d37e7d2935137c4243fe7c7cf59adc3f4c95bdac7"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.6.0/agent-deck_0.6.0_darwin_arm64.tar.gz"
      sha256 "d9f6d99df9131e12ca6a72ae5ac9c45341ce2aa5fe1260067c8add9d6262e987"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.6.0/agent-deck_0.6.0_linux_amd64.tar.gz"
      sha256 "dc22e2b6845d256f5eb283edc5ab6bda94715d9bf354eaacae8d36e90835d70a"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.6.0/agent-deck_0.6.0_linux_arm64.tar.gz"
      sha256 "fe3016859843da4c7d02314eeb87891f7243eec548437e0a571f914fecc24022"
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
