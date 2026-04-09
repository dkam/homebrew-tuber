class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.4.1/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "440c077297b3e2c6438f2468f996579093c71750aea56a62e0e6bc4b68a86ba6"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.4.1/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "89380e2eefdb0b37be9f5513621852e8f45e7085a1acc0c984a961b6682232cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.4.1/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f220c8d8dff797e9b12cdb3b41119a3942bdb24e7a0a3cbdc25e78e66dc0308d"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.4.1/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28a645d3d4c2b1561b3e572bd023c7f09ef77399138bf73eec3ffc6e8e1073a9"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
