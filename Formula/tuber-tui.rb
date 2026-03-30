class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.1/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "099db754ab33ce5cc6bbd23a1dac3541c69e57c01cac88121cae810c6b4d98d7"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.1/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "7b471f33856bef0cc4a9e47b4563309b4ba9c85d28cea06d52c67c3369e44b8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.1/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "695208c62f3ea4e7c6a28eb5037bf681712a1fd774c7b2bb72bd81f8b60dd1df"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.1/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "595820e1ad5f742d5a671e6d4f65294405c8fd929a8f6fa45250cf3ba28294f8"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
