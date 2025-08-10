// Spotlight effect
document.addEventListener("DOMContentLoaded", function () {
  const spotlight = document.querySelector(".spotlight");

  if (spotlight) {
    // Check for reduced motion preference
    const prefersReduced = window.matchMedia(
      "(prefers-reduced-motion: reduce)"
    ).matches;

    if (!prefersReduced) {
      document.addEventListener("pointermove", function (e) {
        document.documentElement.style.setProperty(
          "--spot-x",
          e.clientX + "px"
        );
        document.documentElement.style.setProperty(
          "--spot-y",
          e.clientY + "px"
        );
      });
    }
  }

  // Smooth scrolling for anchor links
  document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
    anchor.addEventListener("click", function (e) {
      e.preventDefault();
      const target = document.querySelector(this.getAttribute("href"));
      if (target) {
        target.scrollIntoView({
          behavior: "smooth",
          block: "start",
        });
      }
    });
  });

  // Simple demo request handler
  document.querySelectorAll(".btn").forEach(function (btn) {
    if (btn.textContent.includes("demo")) {
      btn.addEventListener("click", function () {
        alert("Demo request feature would be implemented here!");
      });
    }
  });
});
