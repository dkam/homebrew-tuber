class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.3.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "5c5f26278b768a9964ff5ae188dd10c39515169dce11d864898efd2d73743684"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.3.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "c18e6ff7ab4030f5d41f7986f602b142fda6d849a685aed0fea380f4ecb3cf50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.3.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b12ebe68d37d44728957c6ebe36506227deb4dbc018c6fa1810e990c4c0ac10c"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.3.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "654e3528d6189a85cc88db182cc57796c756f73b538baf29c871210230d90948"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
