class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "e6c78357b9dfcd0b75505872f9aca066f47ce9de5d83fb839f6356ddea8bf1b3"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "3238c7efd54bc825abd4aa45f8f3cbbc61456a0dcc55c8a6befd4bbb7422a494"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d44fd2ca52e6e0c06ab0bf214276a2baa6d66288ddbc9dc4c760f7233d8ed002"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af2f860edf907229b769a628565ee7595f3d359c28a84146e82369f33702c09a"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
