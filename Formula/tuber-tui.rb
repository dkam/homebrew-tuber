class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "d26b538c3b5d165c88e7f845a83956bdce09365256b6aa8534280e596d49faf0"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "7367d1e5044a01aadefe331124f72ac5ed0bfdc30aa4e7941aff4121ad81a98c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f53f16045c558ade13ed6d3dd7b4a5f11032684496a1171ae8fce2fcc764abac"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a4cb181cdec7e9751096fbc9e23d4203b8d735d76ac3eb7408cd0a51ff970fa"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
