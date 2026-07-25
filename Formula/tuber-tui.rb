class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "174c794a4d2715b86b098196aea6712aaf7880029fa60c74b20dca1d8790b85e"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "9a243b5e78c32e28cf61bdabb8057e8d1eaf346c48f077dac078b478d1a09f5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d81ec3b7846133c089cb3786c529693d5b49fc9fed8961697213bf994ffaf233"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9bbbe8a0c25dbd9b01536c8f5102d7afef97bcea19da5b4174e7622266c48303"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
