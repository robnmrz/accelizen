<script lang="ts">
  const navItems = [
    { label: "Home", href: "/" },
    { label: "About", href: "#" },
    { label: "Pricing", href: "#" },
    { label: "Testemonials", href: "#" },
  ];
</script>

<nav
  class="sticky top-0 z-50 py-3 backdrop-blur-lg border-b border-neutral-700/80"
>
  <div class="container px-4 mx-auto text-sm relative">
    <div class="flex justify-between items-center">
      <div class="flex items-center flex-shrink-0">
        <img src="/logo.svg" alt="logo" class="h-10 w-10 mr-2" />
        <span class="text-xl tracking-tight">accelizen</span>
      </div>
      <ul class="hidden lg:flex ml-14 space-x-12">
        {#each navItems as item}
          <li>
            <a href={item.href}>{item.label}</a>
          </li>
        {/each}
      </ul>
      <div class="hidden justify-center items-center lg:flex space-x-12">
        <!-- <a href="/" class="py-2 px-3 border rounded-md">Sign In</a> -->
        <a
          href="/"
          class="bg-gradient-to-r from-orange-500 to-orange-800 py-2 px-3 rounded-md"
          >Contact Us</a
        >
      </div>
    </div>
  </div>
</nav>
