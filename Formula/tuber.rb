class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.5/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "58cbccfbb6fed608a0c620e76038b56fd4c27b1b5833c7a8c6b8bf74f8d6d109"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.5/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "680181426a4a858fc9b660bba70925e1988015de99c20a65c0686aafcc5e48c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.5/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "280dada2e232e114adbbeba454c197dd0fc362e1c4d0f254de6b5f8dc775dc12"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.5/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8be4849a30e2215a64cbfdf7148c14e0b1fe13653fa533f1cc2726f8ed2a412"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
