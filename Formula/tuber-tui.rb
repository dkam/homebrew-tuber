class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "e28e5e491ec60bd8fd6497939598b4fc2963997e302f28b7031ed85309449894"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "0762e2a545778ffc88af7caea3bbc93e4f638562827e6f912bbcb04d5864582c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed24386b89ddb6dfad5f6a94f15022ce36fe7aa8b1571ebf5ebbeb141b8d7523"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91ac124a0e01ad9ae1c1f7b9e8c2caa79a4d9e15801c56d41ea3c7a7217f76d2"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
