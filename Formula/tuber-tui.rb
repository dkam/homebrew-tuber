class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "c304e3bf92c2d1db8236d0b83fa09025fb9a36b53cb1862dca741f772064212c"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "710e53cb9ee2d473cf7d7b11b904634b79d3a9bde8c02cae1433dd1d428ea0f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33e4d305775ce55f9390cd483aa4dcc22ce740b2f1287c838bdb15754b8710b4"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16793290c7ece0e90bc9eac290c2560a568aa200f523f343b1b82e8255b9add9"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
