class ReactAuditor < Formula
  desc "Fast Rust-based linter for React, TypeScript, and web security"
  homepage "https://github.com/chesteralan/react-auditor"
  license "MIT"
  version "react-auditor-v0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.1/react-auditor-aarch64-apple-darwin-vreact-auditor-v0.5.1.tar.gz"
      sha256 "a56e7b1034a238473e0a739c580228a6a7038609e6636ffcd28615de63e758bf"
    else
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.1/react-auditor-x86_64-apple-darwin-vreact-auditor-v0.5.1.tar.gz"
      sha256 "946ec97bca7fb4992bd8d5ad82590425e3d94d2bf801f056b332c101cab18bde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.1/react-auditor-aarch64-unknown-linux-gnu-vreact-auditor-v0.5.1.tar.gz"
      sha256 "f624f82eb170baa6e8a66d1f2a163cbfb6ec0c1d30497f583c2d6443e71c9d87"
    else
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.1/react-auditor-x86_64-unknown-linux-gnu-vreact-auditor-v0.5.1.tar.gz"
      sha256 "764df455e4237b3397f77819316755df7c1e08d25cc02d583082a37de8edc066"
    end
  end

  def install
    bin.install "react-auditor"
  end

  test do
    system "#{bin}/react-auditor", "--version"
  end
end
