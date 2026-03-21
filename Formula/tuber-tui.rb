class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "8d0f42fe311e7f0461be6c29492754f2aada797f36b7a2ee5b98f5593959c2aa"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "8898a7008c9c40ffe42b73addd52fd17ae64436774fd15feab22fd6b1ca4b266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "801bf49f40379710b3d2f6584048cc71cbe4e5038c3e6644775e53dd63cab158"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46eccad4005840f9193e7689fe3ec636ba243c8a53f3c5f84e11622c83c76160"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
