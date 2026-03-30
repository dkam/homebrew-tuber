class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.6/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "fb2ee0da3877482a00fc41baf3fabc015691a6bf6d331db6d7a670b8bf8dfd73"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.6/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "46e8f5b8220f26c24a5af58e784157ed9c6fd7689e6183daa8602bbc8be28d87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.6/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca0a073f77351035f93a21f3db9218ac4361ff3dfe3cdce76a6549c2bcdb35cf"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.6/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d174b5edfeaeca55fe527ad7dcaaf5764ff2c38e55e22032aef72d7837838b11"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
