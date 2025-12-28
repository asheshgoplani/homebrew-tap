# typed: false
# frozen_string_literal: true

class AgentDeck < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/asheshgoplani/agent-deck"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.2/agent-deck_0.8.2_darwin_amd64.tar.gz"
      sha256 "e18deab8557ca4705d8ac56898c8c82f9ed448c785c7f304e62a417f2b9e7bd8"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.2/agent-deck_0.8.2_darwin_arm64.tar.gz"
      sha256 "1daedd194637c33c3410bfce0cc664272ef05727a07a482c1743204bfafa4f75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.2/agent-deck_0.8.2_linux_amd64.tar.gz"
      sha256 "b8e270650133c7df42191658b9dc392c3b9735e090d6bb1cdbb2cc5fb032b0e7"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.2/agent-deck_0.8.2_linux_arm64.tar.gz"
      sha256 "cf079de2f2df6fe019e6ab4e27d4ffca4cb95c24cbd3ab6ed9b794f4d30c9208"
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
