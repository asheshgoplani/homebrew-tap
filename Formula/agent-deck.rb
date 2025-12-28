# typed: false
# frozen_string_literal: true

class AgentDeck < Formula
  desc "Terminal session manager for AI coding agents"
  homepage "https://github.com/asheshgoplani/agent-deck"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.1/agent-deck_0.8.1_darwin_amd64.tar.gz"
      sha256 "78e03cfef342cd4dbe718cc932f9d4da1bd6f0643e8b766d0ae23baa81ff5e5d"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.1/agent-deck_0.8.1_darwin_arm64.tar.gz"
      sha256 "f0a3e52d14f776cc0464a6bddf5904b4f0d48589a90d530505565f622917eec6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.1/agent-deck_0.8.1_linux_amd64.tar.gz"
      sha256 "44ba1348bb46ae15eb2ee8cdea027ce0c612c036476becd4869bc1ba77f1a0ba"
    end
    on_arm do
      url "https://github.com/asheshgoplani/agent-deck/releases/download/v0.8.1/agent-deck_0.8.1_linux_arm64.tar.gz"
      sha256 "dbfb502d0ac2124723465224ef5afadab855c06ab5798026132d50d01c4463ae"
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
