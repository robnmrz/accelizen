<script lang="ts">
  import { ArrowDownSquareIcon } from "lucide-svelte";
  import MagicButton from "./MagicButton.svelte";
</script>

<div class="pb-18 pt-32">
  <div>
    <!-- spotlight would go here -->
  </div>
  <div class="flex justify-center relative my-20">
    <div
      class="max-w-[89vw] flex flex-col justify-center
	  items-center md:max-w-2xl lg:max-w-[60vw]"
    >
      <h2
        class="text-xs uppercase tracking-widest
		text-center text-blue-100 max-w-80"
      >
        Accelerate your Business with AI
      </h2>

      <!-- <TextGenerateEffect
        words={"Transforming Concepts into Seamless Experiences"}
      /> -->

      <div class="font-bold text-center text-[40px] md:text-5xl lg:text-6xl">
        <div class="my-4">
          <div class="leading-snug tracking-wide text-black dark:text-white">
            <span class="text-black dark:text-white">
              Transforming Concepts into Seamless Experiences
            </span>
          </div>
        </div>
      </div>

      <p
        class="text-sm text-center mb-4 md:trackin-wider
		 md:text-lg lg:text-2xl"
      >
        We are accelizen, a company for accelerating companies with AI based in
        Germany.
      </p>
      <MagicButton
        text="Look at our work"
        position="right"
        icon={ArrowDownSquareIcon}
      />
    </div>
  </div>
</div>
