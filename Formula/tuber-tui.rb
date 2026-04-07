class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.7.1/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "e41cd11bd88592ab2d0be50061e1e911fd021ee46a0a545e631e606877dccdf9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.7.1/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "3629660c3d3b5d0d622da1309069c9ffc712810cd9f08744135115f34a9f0deb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.7.1/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21d6c9929bedaeb18e6136125445a199f48252c0d35e70dd833f00902db3610b"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.7.1/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c47164026ed0b63f8a7906903a991fca46b702505615554e7de20057c7af372b"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
